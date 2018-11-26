.class public Lcom/miui/networkassistant/ui/activity/TetheringStatsSettingActivity;
.super Lcom/miui/common/a/a/l;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateFragment()Landroid/app/Fragment;
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-direct {v0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;-><init>()V

    return-object v0
.end method
