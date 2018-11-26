.class final Lcom/miui/powercenter/autotask/ae;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/powercenter/autotask/p;


# instance fields
.field final synthetic aMx:Lcom/miui/powercenter/autotask/y;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/y;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/ae;->aMx:Lcom/miui/powercenter/autotask/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aXA(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ae;->aMx:Lcom/miui/powercenter/autotask/y;

    const-string/jumbo v1, "auto_clean_memory"

    invoke-static {v0, v1}, Lcom/miui/powercenter/autotask/y;->aZb(Lcom/miui/powercenter/autotask/y;Ljava/lang/String;)V

    return-void
.end method
