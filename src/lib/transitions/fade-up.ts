import type { TransitionConfig } from "svelte/transition";
import { cubicOut } from "svelte/easing";

interface FadeUpParams {
  delay?: number;
  duration?: number;
  y?: number;
}

export function fadeUp(
  node: HTMLElement,
  { delay = 0, duration = 800, y = 20 }: FadeUpParams = {}
): TransitionConfig {
  return {
    delay,
    duration,
    css: (t: number) => `
      opacity: ${t};
      transform: translateY(${(1 - t) * y}px);
    `,
    easing: cubicOut,
  };
}
