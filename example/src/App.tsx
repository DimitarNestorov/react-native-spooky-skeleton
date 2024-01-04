import * as React from 'react';

import { StyleSheet, View } from 'react-native';
import { SpookySkeletonView } from 'react-native-spooky-skeleton';

export default function App() {
  return (
    <View style={styles.container}>
      <SpookySkeletonView style={styles.box} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 160,
    height: 160,
    marginVertical: 20,
  },
});
