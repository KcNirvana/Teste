.class Lcom/miui/personalassistant/ui/fragment/SportSettingFragment$4;
.super Ljava/lang/Object;
.source "SportSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->dialogForMarket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment$4;->this$0:Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment$4;->this$0:Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.hm.health"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/Util;->openInMarket(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
