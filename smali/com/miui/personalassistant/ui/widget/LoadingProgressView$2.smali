.class Lcom/miui/personalassistant/ui/widget/LoadingProgressView$2;
.super Ljava/lang/Object;
.source "LoadingProgressView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/widget/LoadingProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/widget/LoadingProgressView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView$2;->this$0:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView$2;->this$0:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->access$102(Lcom/miui/personalassistant/ui/widget/LoadingProgressView;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView$2;->this$0:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->access$000(Lcom/miui/personalassistant/ui/widget/LoadingProgressView;)Lcom/miui/personalassistant/loader/Reloadable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView$2;->this$0:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->access$000(Lcom/miui/personalassistant/ui/widget/LoadingProgressView;)Lcom/miui/personalassistant/loader/Reloadable;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/personalassistant/loader/Reloadable;->reload()V

    :cond_0
    return-void
.end method
