.class Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment$2;
.super Ljava/lang/Object;
.source "DidiSettingFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x1b090379

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "didi_biz_key"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "3"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/CloudServiceUtil;->setUnSync(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    const v1, 0x1b09037a

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "didi_biz_key"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const v1, 0x1b09037b

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "didi_biz_key"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method
