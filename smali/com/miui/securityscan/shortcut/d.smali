.class Lcom/miui/securityscan/shortcut/d;
.super Landroid/widget/BaseAdapter;
.source ""


# instance fields
.field private La:Ljava/util/List;

.field final synthetic Lb:Lcom/miui/securityscan/shortcut/ShortcutActivity;


# direct methods
.method private constructor <init>(Lcom/miui/securityscan/shortcut/ShortcutActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/shortcut/d;->Lb:Lcom/miui/securityscan/shortcut/ShortcutActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/securityscan/shortcut/ShortcutActivity;Lcom/miui/securityscan/shortcut/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/shortcut/d;-><init>(Lcom/miui/securityscan/shortcut/ShortcutActivity;)V

    return-void
.end method


# virtual methods
.method public Mk(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/shortcut/d;->La:Ljava/util/List;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/d;->La:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/d;->La:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/d;->Lb:Lcom/miui/securityscan/shortcut/ShortcutActivity;

    const v1, 0x7f030103

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    check-cast v0, Lcom/miui/securityscan/shortcut/ShortcutListItemView;

    iget-object v2, p0, Lcom/miui/securityscan/shortcut/d;->La:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/shortcut/c;

    invoke-virtual {v0, v2}, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->Ml(Lcom/miui/securityscan/shortcut/c;)V

    new-instance v2, Lcom/miui/securityscan/shortcut/e;

    invoke-direct {v2, p0, v0}, Lcom/miui/securityscan/shortcut/e;-><init>(Lcom/miui/securityscan/shortcut/d;Lcom/miui/securityscan/shortcut/ShortcutListItemView;)V

    invoke-virtual {v0, v2}, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method
