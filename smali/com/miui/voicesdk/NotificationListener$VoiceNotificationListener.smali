.class public interface abstract Lcom/miui/voicesdk/NotificationListener$VoiceNotificationListener;
.super Ljava/lang/Object;
.source "NotificationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/voicesdk/NotificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VoiceNotificationListener"
.end annotation


# virtual methods
.method public abstract onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
.end method
