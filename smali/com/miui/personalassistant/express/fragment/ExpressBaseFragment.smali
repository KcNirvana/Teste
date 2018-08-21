.class public Lcom/miui/personalassistant/express/fragment/ExpressBaseFragment;
.super Lcom/miui/personalassistant/ui/BaseFragment;
.source "ExpressBaseFragment.java"


# instance fields
.field protected mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    check-cast p1, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/ExpressBaseFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    return-void
.end method
