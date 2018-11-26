.class final Lcom/miui/applicationlock/aq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ake:Lcom/miui/applicationlock/ChooseAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ChooseAccessControl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/aq;->ake:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/aq;->ake:Lcom/miui/applicationlock/ChooseAccessControl;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aiq:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/ChooseAccessControl;->aov(Lcom/miui/applicationlock/ChooseAccessControl$Stage;)V

    return-void
.end method
