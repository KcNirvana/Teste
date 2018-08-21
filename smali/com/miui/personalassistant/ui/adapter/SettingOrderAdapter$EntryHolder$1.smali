.class Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder$1;
.super Ljava/lang/Object;
.source "SettingOrderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->bindEntry(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;

.field final synthetic val$fl:Lcom/miui/personalassistant/model/SettingItem;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;Lcom/miui/personalassistant/model/SettingItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder$1;->this$1:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder$1;->val$fl:Lcom/miui/personalassistant/model/SettingItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder$1;->this$1:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->access$100(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder$1;->val$fl:Lcom/miui/personalassistant/model/SettingItem;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/SettingItem;->getPrefKey()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder$1;->this$1:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->access$000(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/miui/personalassistant/util/CardStatusUtil;->setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder$1;->this$1:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->access$200(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;)Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$OnSettingItemOpetateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder$1;->this$1:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->access$200(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;)Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$OnSettingItemOpetateListener;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder$1;->this$1:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;

    iget-object v3, v3, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    iget-object v4, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder$1;->this$1:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;

    invoke-static {v4}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->access$300(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->getItem(I)Lcom/miui/personalassistant/model/SettingItem;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder$1;->this$1:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;

    iget-object v4, v4, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    invoke-static {v4}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->access$000(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    invoke-interface {v0, v3, v1}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$OnSettingItemOpetateListener;->onItemOpetate(Lcom/miui/personalassistant/model/SettingItem;Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
