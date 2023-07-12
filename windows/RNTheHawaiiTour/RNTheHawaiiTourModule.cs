using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace The.Hawaii.Tour.RNTheHawaiiTour
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNTheHawaiiTourModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNTheHawaiiTourModule"/>.
        /// </summary>
        internal RNTheHawaiiTourModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNTheHawaiiTour";
            }
        }
    }
}
