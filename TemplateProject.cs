﻿namespace TemplateProject
{
    using System.Collections.Generic;
    using UnityEngine;
    using BepInEx;
    using HarmonyLib;
    using System;

    [BepInPlugin(GUID, NAME, VERSION)]
    public class TemplateProject : BaseUnityPlugin
    {
        public const string GUID = "com.ehaugw.templateproject";
        public const string VERSION = "1.0.0";
        public const string NAME = "TemplateProject";

        internal void Awake()
        {
        }
    }
}
