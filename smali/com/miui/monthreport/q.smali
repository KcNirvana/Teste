.class final Lcom/miui/monthreport/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aZV:Lcom/miui/monthreport/f;

.field final synthetic aZW:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/monthreport/f;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/monthreport/q;->aZV:Lcom/miui/monthreport/f;

    iput-object p2, p0, Lcom/miui/monthreport/q;->aZW:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/monthreport/q;->aZV:Lcom/miui/monthreport/f;

    iget-object v1, p0, Lcom/miui/monthreport/q;->aZW:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/monthreport/f;->buZ(Lcom/miui/monthreport/f;Ljava/util/List;)V

    return-void
.end method
