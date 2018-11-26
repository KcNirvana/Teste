.class final Lcom/miui/gamebooster/ui/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic cH:Lcom/miui/gamebooster/ui/WhiteListActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/WhiteListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/v;->cH:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/v;->cH:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->D(Lcom/miui/gamebooster/ui/WhiteListActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/v;->cH:Lcom/miui/gamebooster/ui/WhiteListActivity;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/v;->cH:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/WhiteListActivity;->B(Lcom/miui/gamebooster/ui/WhiteListActivity;)Lmiui/view/SearchActionMode$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/ui/WhiteListActivity;->startSearchMode(Lmiui/view/SearchActionMode$Callback;)V

    :cond_0
    return-void
.end method
