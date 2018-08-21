.class Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment$1;
.super Ljava/lang/Object;
.source "DidiSettingFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "key_didi_always_use_sdk"

    invoke-static {v0, v1, p2}, Lcom/miui/personalassistant/util/CardStatusUtil;->setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
