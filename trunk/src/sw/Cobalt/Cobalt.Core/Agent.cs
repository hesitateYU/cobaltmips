using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO.Ports;

namespace Cobalt.Core
{
    public class Agent
    {
        internal static SerialPort com;

        private Agent() { }
        static Agent()
        {
            com = new SerialPort(Properties.Settings.Default.SerialPortName, Properties.Settings.Default.SerialPortBaudRate,
                Parity.None, 8, StopBits.None);
        }

        static void OpenSerialPort(string portName, int baudRate)
        {
            com.PortName = portName;
            com.BaudRate = baudRate;
        }

        static void SendRequest(Transaction request, ref Transaction response)
        {
        }
    }
}
