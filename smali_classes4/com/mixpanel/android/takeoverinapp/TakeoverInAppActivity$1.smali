.class Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$1;
.super Ljava/lang/Object;
.source "TakeoverInAppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->onCreateInAppNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$1;->this$0:Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$1;->this$0:Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;

    invoke-virtual {p1}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->finish()V

    iget-object p1, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$1;->this$0:Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;

    invoke-static {p1}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->access$000(Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;)I

    move-result p1

    invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->releaseDisplayState(I)V

    return-void
.end method
