.class public Lcom/miui/applicationlock/widget/WrapMaml;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/applicationlock/widget/WrapMaml;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/applicationlock/widget/WrapMaml;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/applicationlock/widget/WrapMaml;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public aiW(Ljava/lang/String;)V
    .locals 7

    const/4 v6, -0x1

    new-instance v0, Lmiui/maml/ResourceManager;

    new-instance v1, Lmiui/maml/util/ZipResourceLoader;

    invoke-direct {v1, p1}, Lmiui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lmiui/maml/ResourceManager;-><init>(Lmiui/maml/ResourceLoader;)V

    new-instance v1, Lmiui/maml/ScreenElementRoot;

    new-instance v2, Lmiui/maml/ScreenContext;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/miui/applicationlock/widget/WrapMaml;->mContext:Landroid/content/Context;

    sget v5, Lmiui/R$style;->Theme_Light:I

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3, v0}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;)V

    invoke-direct {v1, v2}, Lmiui/maml/ScreenElementRoot;-><init>(Lmiui/maml/ScreenContext;)V

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->load()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lmiui/maml/component/MamlView;

    iget-object v2, p0, Lcom/miui/applicationlock/widget/WrapMaml;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {p0, v0, v6, v6}, Lcom/miui/applicationlock/widget/WrapMaml;->addView(Landroid/view/View;II)V

    :cond_0
    return-void
.end method
