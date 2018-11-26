.class final Lcom/miui/gamebooster/gbservices/C;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic qn:Lcom/miui/gamebooster/gbservices/j;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/j;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/C;->qn:Lcom/miui/gamebooster/gbservices/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/C;->qn:Lcom/miui/gamebooster/gbservices/j;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/miui/gamebooster/gbservices/j;->sC(Lcom/miui/gamebooster/gbservices/j;I)I

    return-void
.end method
