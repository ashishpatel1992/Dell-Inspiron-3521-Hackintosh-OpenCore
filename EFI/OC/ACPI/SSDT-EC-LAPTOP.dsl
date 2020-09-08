/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200717 (32-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of E:/EFI/OC/ACPI/SSDT-EC-LAPTOP.aml, Mon Sep  7 14:33:42 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000BE (190)
 *     Revision         0x02
 *     Checksum         0x30
 *     OEM ID           "DRTNIA"
 *     OEM Table ID     "SsdtEC"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190509 (538510601)
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "SsdtEC", 0x00001000)
{
    External (_SB_.PCI0.LPC_.EC__, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)

    If ((!CondRefOf (\_SB.PCI0.LPCB.EC) && !CondRefOf (\_SB.PCI0.LPC.EC)))
    {
        Scope (\_SB)
        {
            Device (EC)
            {
                Name (_HID, "ACID0001")  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }
        }
    }
}

