import List from '@/components/List';
import Vue from 'vue';

describe('List.vue', () => {
    // our test goes here
    // build component
    const Constructor = Vue.extend(List);

    it('the title of my list', () => {
      const ListComponent = new Constructor().$mount();
      expect(ListComponent.$el.textContent).to.contain('My To Do List');
  })


})