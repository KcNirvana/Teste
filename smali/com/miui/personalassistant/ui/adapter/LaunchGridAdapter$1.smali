.class Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$1;
.super Ljava/lang/Object;
.source "LaunchGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->onBindViewHolder(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

.field final synthetic val$fl:Lcom/miui/personalassistant/model/FunctionLaunch;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;ILcom/miui/personalassistant/model/FunctionLaunch;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$1;->this$0:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    iput p2, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$1;->val$fl:Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$1;->this$0:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->access$000(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;)Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$1;->this$0:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->access$000(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;)Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$OnClickListener;

    move-result-object v0

    iget v1, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$1;->val$position:I

    iget-object v2, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$1;->val$fl:Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-virtual {v2}, Lcom/miui/personalassistant/model/FunctionLaunch;->getGroupId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$OnClickListener;->onGridFunctionItemClick(II)V

    :cond_0
    return-void
.end method
