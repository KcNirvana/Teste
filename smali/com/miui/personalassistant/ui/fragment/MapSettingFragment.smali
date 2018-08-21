.class public Lcom/miui/personalassistant/ui/fragment/MapSettingFragment;
.super Landroid/app/Fragment;
.source "MapSettingFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/MapSettingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1b0902e6

    new-instance v3, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;

    invoke-direct {v3}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x1b0400c0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/MapSettingFragment;->initView()V

    return-object v0
.end method
