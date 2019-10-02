.class Lcom/mixpanel/android/mpmetrics/InAppFragment$3;
.super Ljava/lang/Object;
.source "InAppFragment.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/mpmetrics/InAppFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/InAppFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment$3;->this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    cmpl-float p1, p4, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment$3;->this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;

    invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->access$000(Lcom/mixpanel/android/mpmetrics/InAppFragment;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment$3;->this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;

    invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->access$400(Lcom/mixpanel/android/mpmetrics/InAppFragment;)Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;->getInAppNotification()Lcom/mixpanel/android/mpmetrics/InAppNotification;

    move-result-object p1

    check-cast p1, Lcom/mixpanel/android/mpmetrics/MiniInAppNotification;

    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/MiniInAppNotification;->getCtaUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment$3;->this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;

    invoke-static {v5}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->access$300(Lcom/mixpanel/android/mpmetrics/InAppFragment;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v4, "MixpanelAPI.InAppFrag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User doesn\'t have an activity for notification URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mixpanel/android/util/MPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v2, "url"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-object v2, v3

    :catch_2
    const-string v0, "MixpanelAPI.InAppFrag"

    const-string v3, "Can\'t put url into json properties"

    invoke-static {v0, v3}, Lcom/mixpanel/android/util/MPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception p1

    const-string v0, "MixpanelAPI.InAppFrag"

    const-string v2, "Can\'t parse notification URI, will not take any action"

    invoke-static {v0, v2, p1}, Lcom/mixpanel/android/util/MPLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment$3;->this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->access$500(Lcom/mixpanel/android/mpmetrics/InAppFragment;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v0

    const-string v3, "$campaign_open"

    invoke-interface {v0, v3, p1, v2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->trackNotification(Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/InAppNotification;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment$3;->this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;

    invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->access$000(Lcom/mixpanel/android/mpmetrics/InAppFragment;)V

    return v1
.end method
