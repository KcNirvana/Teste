.class public interface abstract Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;
.super Ljava/lang/Object;
.source "ViewGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/play/ViewGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnControlEventListener"
.end annotation


# static fields
.field public static final REGION_CENTER:I = 0x2

.field public static final REGION_LEFT:I = 0x0

.field public static final REGION_RIGHT:I = 0x1


# virtual methods
.method public abstract onDoubleTap(I)V
.end method

.method public abstract onTap(I)V
.end method

.method public abstract onTouchMove(IFF)V
.end method

.method public abstract onTouchUp(I)V
.end method
