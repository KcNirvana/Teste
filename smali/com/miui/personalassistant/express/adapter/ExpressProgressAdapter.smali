.class public Lcom/miui/personalassistant/express/adapter/ExpressProgressAdapter;
.super Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;
.source "ExpressProgressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/personalassistant/express/adapter/BaseDataAdapter",
        "<",
        "Lcom/miui/personalassistant/express/bean/DetailEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;ILcom/miui/personalassistant/express/bean/DetailEntry;)V
    .locals 0

    check-cast p1, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;

    invoke-virtual {p1, p3}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->bind(Lcom/miui/personalassistant/express/bean/DetailEntry;)V

    return-void
.end method

.method public bridge synthetic bindView(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/miui/personalassistant/express/bean/DetailEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/personalassistant/express/adapter/ExpressProgressAdapter;->bindView(Landroid/view/View;ILcom/miui/personalassistant/express/bean/DetailEntry;)V

    return-void
.end method

.method public newView(Landroid/content/Context;Lcom/miui/personalassistant/express/bean/DetailEntry;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1b040082

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newView(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    check-cast p2, Lcom/miui/personalassistant/express/bean/DetailEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/personalassistant/express/adapter/ExpressProgressAdapter;->newView(Landroid/content/Context;Lcom/miui/personalassistant/express/bean/DetailEntry;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
