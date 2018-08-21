.class public Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "LaunchGridAdapter.java"

# interfaces
.implements Lcom/miui/personalassistant/interfaces/OnDragVHListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mAppName:Landroid/widget/TextView;

.field public mIcon:Landroid/widget/ImageView;

.field public mIvRemove:Landroid/widget/ImageView;

.field public mName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x1b0900cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const v0, 0x1b0900ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    const v0, 0x1b0902c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->mAppName:Landroid/widget/TextView;

    const v0, 0x1b090235

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->mIvRemove:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public onItemFinish()V
    .locals 3

    const-string/jumbo v0, "LaunchGridAdapter"

    const-string/jumbo v1, "onItemFinish"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->access$100(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->setData(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->getInstance()Lcom/miui/personalassistant/util/FunctionLaunchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->access$200(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->access$100(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->saveFunctionListToDB(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->access$300(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;)V

    return-void
.end method

.method public onItemSelected()V
    .locals 2

    const-string/jumbo v0, "LaunchGridAdapter"

    const-string/jumbo v1, "onItemSelected"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
