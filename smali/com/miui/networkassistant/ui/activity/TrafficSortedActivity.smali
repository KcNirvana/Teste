.class public Lcom/miui/networkassistant/ui/activity/TrafficSortedActivity;
.super Lcom/miui/common/a/a/l;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/a/a/l;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/miui/networkassistant/ui/activity/TrafficSortedActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/TrafficSortedActivity$1;-><init>(Lcom/miui/networkassistant/ui/activity/TrafficSortedActivity;)V

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/TrafficSortedActivity;->postOnIdleUiThread(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public onCreateFragment()Landroid/app/Fragment;
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-direct {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;-><init>()V

    return-object v0
.end method
