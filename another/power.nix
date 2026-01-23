{ config, pkgs, ... }:

{
  services.tlp = {
    enable = true;
    settings = {

      ####################
      # CPU (Alder Lake)
      ####################
      CPU_SCALING_GOVERNOR_ON_AC  = "schedutil";
      CPU_SCALING_GOVERNOR_ON_BAT = "schedutil";

      CPU_ENERGY_PERF_POLICY_ON_AC  = "performance";
      CPU_ENERGY_PERF_POLICY_ON_BAT = "balance_power";

      CPU_MIN_PERF_ON_AC  = 20;
      CPU_MAX_PERF_ON_AC  = 100;

      CPU_MIN_PERF_ON_BAT = 5;
      CPU_MAX_PERF_ON_BAT = 70;

      ####################
      # GPU Iris Xe
      ####################
      INTEL_GPU_MIN_FREQ_ON_AC  = 300;
      INTEL_GPU_MAX_FREQ_ON_AC  = 1200;

      INTEL_GPU_MIN_FREQ_ON_BAT = 300;
      INTEL_GPU_MAX_FREQ_ON_BAT = 800;

      ####################
      # Economia geral
      ####################
      PCIE_ASPM_ON_BAT = "powersupersave";
      SATA_LINKPWR_ON_BAT = "med_power_with_dipm";
      USB_AUTOSUSPEND = 1;

      PLATFORM_PROFILE_ON_AC  = "performance";
      PLATFORM_PROFILE_ON_BAT = "balanced";

      NMI_WATCHDOG = 0;
    };
  };

  services.powertop.enable = true;
}
