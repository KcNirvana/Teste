.class public interface abstract annotation Lcom/android/camera/CameraIntentManager$CameraMode;
.super Ljava/lang/Object;
.source "CameraIntentManager.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/annotation/StringDef;
    value = {
        "UNSPECIFIED",
        "CAPTURE",
        "PANORAMA",
        "PANORAMIC",
        "MANUAL_MODE",
        "MANUAL",
        "PORTRAIT",
        "SQUARE",
        "SHORT_VIDEO",
        "VIDEO",
        "FAST_MOTION",
        "SLOW_MOTION"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraIntentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "CameraMode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation