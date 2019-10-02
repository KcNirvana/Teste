.class Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$3;
.super Ljava/lang/Object;
.source "TakeoverInAppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->setUpInAppButton(Landroid/widget/Button;Lcom/mixpanel/android/mpmetrics/InAppButton;Lcom/mixpanel/android/mpmetrics/InAppNotification;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;

.field final synthetic val$buttonIndex:I

.field final synthetic val$inApp:Lcom/mixpanel/android/mpmetrics/InAppNotification;

.field final synthetic val$inAppButtonModel:Lcom/mixpanel/android/mpmetrics/InAppButton;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;Lcom/mixpanel/android/mpmetrics/InAppButton;Lcom/mixpanel/android/mpmetrics/InAppNotification;I)V
    .locals 0

    iput-object p1, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$3;->this$0:Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;

    iput-object p2, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$3;->val$inAppButtonModel:Lcom/mixpanel/android/mpmetrics/InAppButton;

    iput-object p3, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$3;->val$inApp:Lcom/mixpanel/android/mpmetrics/InAppNotification;

    iput p4, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$3;->val$buttonIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$3;->val$inAppButtonModel:Lcom/mixpanel/android/mpmetrics/InAppButton;

    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/InAppButton;->getCtaUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$3;->this$0:Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;

    invoke-virtual {v1, v2}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "MixpanelAPI.TakeoverInAppActivity"

    const-string v2, "User doesn\'t have an activity for notification URI"

    invoke-static {v1, v2}, Lcom/mixpanel/android/util/MPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v0, "url"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-object v0, v1

    :catch_2
    const-string p1, "MixpanelAPI.TakeoverInAppActivity"

    const-string v1, "Can\'t put url into json properties"

    invoke-static {p1, v1}, Lcom/mixpanel/android/util/MPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception p1

    const-string v0, "MixpanelAPI.TakeoverInAppActivity"

    const-string v1, "Can\'t parse notification URI, will not take any action"

    invoke-static {v0, v1, p1}, Lcom/mixpanel/android/util/MPLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :goto_1
    const-string p1, "primary"

    iget-object v1, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$3;->val$inApp:Lcom/mixpanel/android/mpmetrics/InAppNotification;

    check-cast v1, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->getNumButtons()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget p1, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$3;->val$buttonIndex:I

    if-nez p1, :cond_1

    const-string p1, "secondary"

    goto :goto_2

    :cond_1
    const-string p1, "primary"

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    :cond_3
    const-string v1, "button"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    const-string p1, "MixpanelAPI.TakeoverInAppActivity"

    const-string v1, "Can\'t put button type into json properties"

    invoke-static {p1, v1}, Lcom/mixpanel/android/util/MPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object p1, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$3;->this$0:Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;

    invoke-static {p1}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->access$100(Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object p1

    const-string v1, "$campaign_open"

    iget-object v2, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$3;->val$inApp:Lcom/mixpanel/android/mpmetrics/InAppNotification;

    invoke-interface {p1, v1, v2, v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->trackNotification(Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/InAppNotification;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$3;->this$0:Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;

    invoke-virtual {p1}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->finish()V

    iget-object p1, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$3;->this$0:Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;

    invoke-static {p1}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->access$000(Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;)I

    move-result p1

    invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->releaseDisplayState(I)V

    return-void
.end method
