import { registerPlugin } from '@capacitor/core';

import type { TorchPluginPlugin } from './definitions';

const TorchPlugin = registerPlugin<TorchPluginPlugin>('TorchPlugin', {
  web: () => import('./web').then(m => new m.TorchPluginWeb()),
});

export * from './definitions';
export { TorchPlugin };
