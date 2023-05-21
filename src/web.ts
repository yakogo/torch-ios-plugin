import { WebPlugin } from '@capacitor/core';
import type { TorchPluginPlugin } from './definitions';

export class TorchPluginWeb extends WebPlugin implements TorchPluginPlugin {
    
  async light() {
    console.log('bulb');
  }

}

const TorchPlugin = new TorchPluginWeb();
export { TorchPlugin };
