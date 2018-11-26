.class final Lcom/miui/applicationlock/widget/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic adQ:Lcom/miui/applicationlock/widget/i;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/widget/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/w;->adQ:Lcom/miui/applicationlock/widget/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/w;->adQ:Lcom/miui/applicationlock/widget/i;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/i;->ajb(Lcom/miui/applicationlock/widget/i;)Lcom/miui/applicationlock/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/LockPatternView;->aih()V

    return-void
.end method
