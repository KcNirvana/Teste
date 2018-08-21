.class public Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment;
.super Landroid/app/Fragment;
.source "MeansOfTransportationSettingFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field public static final MEANS_OF_TRANS_KEY:Ljava/lang/String; = "means_of_trans_key"

.field public static final TRANS_BIZ_BICYCLE:I = 0x2

.field public static final TRANS_BIZ_DRIVE:I = 0x0

.field public static final TRANS_BIZ_SUBWAY:I = 0x1

.field public static final TRANS_BIZ_WALK:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5

    const v2, 0x1b0902e8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "means_of_trans_key"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/personalassistant/util/Preference;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    new-instance v2, Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment$1;-><init>(Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void

    :pswitch_0
    const v2, 0x1b0902e9

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :pswitch_1
    const v2, 0x1b0902ea

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :pswitch_2
    const v2, 0x1b0902eb

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :pswitch_3
    const v2, 0x1b0902ec

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x1b0400c1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment;->initView(Landroid/view/View;)V

    return-object v0
.end method
