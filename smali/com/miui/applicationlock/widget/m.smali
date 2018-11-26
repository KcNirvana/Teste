.class final Lcom/miui/applicationlock/widget/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic adG:Lcom/miui/applicationlock/widget/a;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/widget/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/m;->adG:Lcom/miui/applicationlock/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/m;->adG:Lcom/miui/applicationlock/widget/a;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/a;->aht(Lcom/miui/applicationlock/widget/a;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    return v1
.end method
