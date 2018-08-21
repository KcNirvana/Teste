.class public interface abstract Lcom/miui/voicesdk/IVoiceAssistManager;
.super Ljava/lang/Object;
.source "IVoiceAssistManager.java"


# virtual methods
.method public abstract clickBackKey(Landroid/content/Context;)Z
.end method

.method public abstract clickButton(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract execute(Landroid/content/Context;Ljava/util/List;Lcom/miui/voicesdk/ActionCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/voicesdk/ActionNode;",
            ">;",
            "Lcom/miui/voicesdk/ActionCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract findAccessibilityNodeinfosByClassName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getActiveNotifications(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;
.end method

.method public abstract getRootInActiveWindow(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityNodeInfo;
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract isAccessibilityOn(Landroid/content/Context;)Z
.end method

.method public abstract lock()V
.end method

.method public abstract setCallback(Lcom/miui/voicesdk/ActionCallback;)V
.end method

.method public abstract setDebugable(Z)V
.end method

.method public abstract setRequestFilterKeyEnable(Z)V
.end method

.method public abstract setUserPathStart(Landroid/content/Context;Ljava/lang/String;ZILcom/miui/voicesdk/ActionCallback;)Ljava/lang/String;
.end method

.method public abstract setVoiceNotificationListener(Lcom/miui/voicesdk/NotificationListener$VoiceNotificationListener;)V
.end method

.method public abstract startReplayNodeList(Landroid/content/Context;Lorg/json/JSONArray;Lcom/miui/voicesdk/ActionCallback;)V
.end method

.method public abstract startTestNodeList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/voicesdk/ActionCallback;)V
.end method

.method public abstract unlock(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/miui/voicesdk/ActionNode;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateService(Landroid/content/Context;ZLcom/miui/voicesdk/ActionCallback;)V
.end method
