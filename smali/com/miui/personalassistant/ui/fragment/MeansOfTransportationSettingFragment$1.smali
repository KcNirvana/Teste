.class Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment$1;
.super Ljava/lang/Object;
.source "MeansOfTransportationSettingFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x1b0902e9

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "means_of_trans_key"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    return-void

    :cond_1
    const v1, 0x1b0902ea

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "means_of_trans_key"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const v1, 0x1b0902eb

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "means_of_trans_key"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_3
    const v1, 0x1b0902ec

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/fragment/MeansOfTransportationSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "means_of_trans_key"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method
