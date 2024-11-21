pluginManagement {
    repositories {
        maven { url = uri("https://maven.aliyun.com/repository/public") }
        maven { url = uri("https://maven.aliyun.com/repository/central") }
        maven { url = uri("https://maven.aliyun.com/repository/gradle-plugin") }
        maven { url =uri("https://storage.zego.im/maven") } //即构
        google()
        mavenCentral()
        gradlePluginPortal()
        maven { url = uri("https://mvn.mob.com/android") }
        maven {
            url = uri("https://mvn.mob.com/android")
        }
        maven {
            url = uri("https://jitpack.io")
        }
    }
}
dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        maven { url = uri("https://maven.aliyun.com/repository/public") }
        maven { url = uri("https://maven.aliyun.com/repository/central") }
        maven { url = uri("https://maven.aliyun.com/repository/gradle-plugin") }
        maven { url =uri("https://storage.zego.im/maven") } //即构
        google()
        mavenCentral()
        gradlePluginPortal()
        maven { url = uri("https://mvn.mob.com/android") }
        maven {
            url = uri("https://mvn.mob.com/android")
        }
        maven {
            url = uri("https://jitpack.io")
        }
    }
}
rootProject.name = "SVGAPlayerTest"
include(":app","library")
 