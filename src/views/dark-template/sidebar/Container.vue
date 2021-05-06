<!-- side left -->
<template>
  <v-card
    color="grey darken-3"
    dark
  >
    <v-card-text>
      <avatar />
      <div class="text-sm-center mb-4 mt-3">
        <h1>{{ prenom }}</h1>
        <h2>
          <span class="light-blue--text text--lighten-3">Spinelli</span>
        </h2>
        <span>
          An embedded software developer who discovered VueJS
        </span>
      </div>

      <sidebar-section :options="sections.info" />
      <sidebar-section :options="sections.socials" />
      <sidebar-section :options="sections.hobbies">
        <template v-slot:item="{item}">
          <v-chip>
            <v-avatar>
              <v-icon>
                {{ item.icon }}
              </v-icon>
            </v-avatar>
            {{ item.text }}
          </v-chip>
        </template>
      </sidebar-section>
      <sidebar-section :options="sections.languages">
        <template v-slot:items="{items}">
          <v-container pa-0>
            <v-layout
              wrap
              class="text-xs-center"
            >
              <template
                v-for="(item, i) in items"
              >
                <v-flex
                  :key="i"
                  md3
                  sm4
                  xs6
                >
                  <v-progress-circular
                    rotate="360"
                    size="65"
                    width="2"
                    :value="item.value"
                    color="white"
                    class="ma-2"
                  >
                    {{ item.text }}
                  </v-progress-circular>
                </v-flex>
              </template>
            </v-layout>
          </v-container>
        </template>
      </sidebar-section>
    </v-card-text>
  </v-card>
</template>

<script>
import Avatar from '@/views/dark-template/sidebar/Avatar'
import SidebarSection from '@/views/dark-template/sidebar/Section'
export default {
  name      : 'Sidebar',
  components: { SidebarSection, Avatar },
  data () {
    return {
      prenom  : 'Isaia',
      sections: {
        info: {
          title: 'INFO',
          items: [
            {
              name: 'Email',
              icon: 'mdi-email',
              text: 'isaia.spinelli@master.hes-so.ch',
            },
            {
              name: 'Phone number',
              icon: 'mdi-cellphone',
              text: '078 684 8021',
            },
            {
              name: 'Birth Date',
              icon: 'mdi-cake-variant',
              text: 'Dec 16, 1995',
            },
            {
              name: 'Habitation',
              icon: 'mdi-map-marker',
              text: 'Yverdon-les-Bains, Suisse',
            },
          ],
        },
        socials: {
          title: 'SOCIALS',
          items: [
            {
              icon: 'mdi-github-circle',
              text: 'github.com/isaiaSpinelli',
              link: 'https://github.com/isaiaSpinelli',
            },
            {
              icon: 'mdi-linkedin-box',
              text: 'linkedin.com/in/isaïa-spinelli',
              link: 'https://linkedin.com/in/isaïa-spinelli-643207195',
            },
          ],
        },
        hobbies: {
          title: 'HOBBIES',
          items: [

            {
              icon: 'mdi-image-filter-hdr',
              text: 'Nature',
            },
            {
              icon: 'mdi-teach',
              text: 'Teaching',
            },
            {
              icon: 'mdi-karate',
              text: 'Sports',
            },
            {
              icon: 'mdi-music',
              text: 'Music',
            },
            {
              icon: 'mdi-swim',
              text: 'swimming',
            },
          ],
        },
        languages: {
          title: 'LANGUAGES',
          items: [
            {
              text : 'French',
              value: 90,
            },
            {
              text : 'English',
              value: 55,
            },
            {
              text : 'German',
              value: 10,
            },
          ],
        },
      },
    }
  },
}
</script>

<style scoped>
.sidebar{
    background: #2e2e2e;
}
</style>
