<!-- side right -->
<template>
  <v-card
    color="grey lighten-4"
    light
  >
    <v-card-text>
      <content-section
        title="Who am I?"
      >
        I'm a developer born in Switzerland interested in technology in general. I started with hardware (electronique) and i'm now for a while in software (embedded for preference). I am particularly interested in low power communication technology (LTE-M & NB-IoT). I look forward to working to participate in the design and implementation of high quality products.
      </content-section>
      <content-section
        v-if="prouds"
        title="What am I proud of?"
      >
        <v-layout
          v-for="(proud, i) in prouds"
          :key="i"
        >
          <v-flex
            md1
            xs3
          >
            <v-icon right>
              {{ proud.icon }}
            </v-icon>
          </v-flex>
          <v-flex
            md11
            xs9
          >
            <p>
              <strong>{{ proud.text }}</strong><br>
              <small>{{ proud.source }}</small>
            </p>
          </v-flex>
        </v-layout>
      </content-section>
      <content-section
        v-if="educations"
        title="Education"
      >
        <v-layout
          v-for="(education, i) in educations"
          :key="i"
        >
          <v-flex md4>
            {{ education.from }} - {{ education.to }}
          </v-flex>
          <v-flex md8>
            <strong v-if="education.title">{{ education.title }}</strong>
            <div v-if="education.location">
              <i>{{ education.location }}</i>
            </div>
            <div v-if="education.description">
              {{ education.description }}
            </div>
            <br>
            <br>
          </v-flex>
        </v-layout>
      </content-section>
      <content-section
        v-if="skills"
        id="to-timeline"
        title="Skills"
      >
        <template slot="actions">
          (% are relative not absolute)
        </template>
        <v-layout wrap>
          <template
            v-for="(skill, i) in skills"
          >
            <v-flex
              v-if="skill.divider"
              :key="i"
              md12
              xs12
              mb-4
            />
            <v-flex
              v-else
              :key="i"
              md6
              xs12
            >
              <div
                class="mr-2 ml-2"
              >
                <div class="align-center">
                  <v-icon
                    small
                  >
                    {{ skill.icon }}
                  </v-icon>
                  {{ skill.title }}
                </div>
                <v-progress-linear
                  class="progress"
                  color="secondary"
                  height="3"
                  :value="skill.value"
                />
              </div>
            </v-flex>
          </template>
        </v-layout>
      </content-section>
    </v-card-text>
  </v-card>
</template>

<script>
import ContentSection from '@/views/dark-template/content/Section'
export default {
  name      : 'MainContent',
  components: { ContentSection },
  data      : () => ({
    prouds: [
      {
        icon  : 'mdi-help-rhombus-outline',
        text  : 'Teaching different subjects to different grades',
        source: 'Secondary school, CFC, high school (ES) & HES',
      },
      {
        icon  : 'mdi-account-clock',
        text  : 'Student jobs while 4 years',
        source: 'gas station (at Shell) & AppApp (teaching)',
      },
      {
        icon  : 'mdi-account-group',
        text  : 'Intership while 1 year in Meteo Suisse in Payerne',
        source: 'Mainly design and create low voltage power supply',
      },
      {
        icon  : 'mdi-charity',
        text  : 'Founder a association',
        source: 'Made it possible to create a skatepark in Chavornay',
      },
      {
        icon  : 'mdi-account-multiple',
        text  : 'My social life',
        source: 'Family, friends and girlfriend',
      },
    ],
    educations: [
      {
        from       : '2020',
        to         : '2022 (not finished yet)',
        title      : 'Master\'s degree, Embedded and mobile systems',
        location   : 'Master of Science en Engineering (MSE), Lausanne',
        description: '',
      },
      {
        from       : '2017',
        to         : '2020',
        title      : 'Bachelor\'s degree, Embedded computer engineer',
        location   : 'HEIG-VD, Yverdon-les-Bains',
        description: '',
      },
      {
        from       : '2015',
        to         : '2017',
        title      : 'Graduate technician in electronic engineering',
        location   : 'ETML–ES, Lausanne',
        description: '',
      },
      {
        from       : '2011',
        to         : '2015',
        title      : 'Electronic technician CFC',
        location   : 'CPNV, Yverdon-les-Bains',
        description: '',
      },
    ],
    skills: [
      {
        title: 'C',
        icon : 'mdi-language-c',
        value: 95,
      },
      {
        title: 'C++',
        icon : 'mdi-language-cpp',
        value: 80,
      },
      {
        title: 'VHDL',
        icon : 'mdi-memory',
        value: 70,
      },
      {
        title: 'SQL',
        icon : 'mdi-database-search',
        value: 60,
      },
      { divider: true },
      {
        title: 'Linux',
        icon : 'mdi-linux',
        value: 90,
      },
      {
        title: 'RTOS',
        icon : 'mdi-av-timer',
        value: 80,
      },
      {
        title: 'Driver',
        icon : 'mdi-screwdriver',
        value: 70,
      },
      {
        title: 'Embedded system',
        icon : 'mdi-car-electric',
        value: 80,
      },
      {
        title: 'Git',
        icon : 'mdi-git',
        value: 70,
      },
      { divider: true },
      {
        title: 'Hardware Development',
        icon : 'mdi-chip',
        value: 50,
      },
      {
        title: 'Android Studio',
        icon : 'mdi-android-debug-bridge',
        value: 70,
      },
    ],
  }),
}
</script>

<style scoped>
.title {
  border-bottom: 2px #bfbfbf solid;
  line-height: 1.5 !important;
}
.progress {
  margin-top: 0.1rem;
}
</style>
