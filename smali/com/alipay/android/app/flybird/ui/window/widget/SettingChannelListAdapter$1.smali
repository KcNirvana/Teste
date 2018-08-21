.class Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter$1;
.super Ljava/lang/Object;
.source "SettingChannelListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;

    iput p2, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter$1;->val$position:I

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->access$002(Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;I)I

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->notifyDataSetChanged()V

    return-void
.end method
