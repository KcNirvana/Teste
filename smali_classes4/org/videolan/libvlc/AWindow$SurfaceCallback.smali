.class interface abstract Lorg/videolan/libvlc/AWindow$SurfaceCallback;
.super Ljava/lang/Object;
.source "AWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/AWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SurfaceCallback"
.end annotation


# virtual methods
.method public abstract onSurfacesCreated(Lorg/videolan/libvlc/AWindow;)V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract onSurfacesDestroyed(Lorg/videolan/libvlc/AWindow;)V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method
