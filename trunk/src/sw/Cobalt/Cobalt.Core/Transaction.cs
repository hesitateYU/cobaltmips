using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cobalt.Core
{
    class Transaction
    {
        enum TransactionMode
        {
            Register,
            InternalRegister,
            Memory
        }

        TransactionMode Mode { get; set; }
    }
}
