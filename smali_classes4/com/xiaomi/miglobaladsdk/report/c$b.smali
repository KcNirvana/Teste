.class public Lcom/xiaomi/miglobaladsdk/report/c$b;
.super Lcom/xiaomi/miglobaladsdk/report/c$a;
.source "AdReportTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/miglobaladsdk/report/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic c:Lcom/xiaomi/miglobaladsdk/report/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/report/c;Lcom/xiaomi/miglobaladsdk/report/a;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/report/c$b;->c:Lcom/xiaomi/miglobaladsdk/report/c;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/miglobaladsdk/report/c$a;-><init>(Lcom/xiaomi/miglobaladsdk/report/c;Lcom/xiaomi/miglobaladsdk/report/a;)V

    const-string p1, "tid"

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/report/c$b;->a:Lcom/xiaomi/miglobaladsdk/report/a;

    iget-object v0, v0, Lcom/xiaomi/miglobaladsdk/report/a;->s:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "tagId"

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/report/c$b;->a:Lcom/xiaomi/miglobaladsdk/report/a;

    iget-object v0, v0, Lcom/xiaomi/miglobaladsdk/report/a;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-virtual {p0, p2}, Lcom/xiaomi/miglobaladsdk/report/c$b;->a(Lcom/xiaomi/miglobaladsdk/report/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ex"

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/report/c$b;->a:Lcom/xiaomi/miglobaladsdk/report/a;

    iget-object v0, v0, Lcom/xiaomi/miglobaladsdk/report/a;->B:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "apv"

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/report/c$b;->a:Lcom/xiaomi/miglobaladsdk/report/a;

    iget-object v0, v0, Lcom/xiaomi/miglobaladsdk/report/a;->g:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ch"

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/report/c$b;->a:Lcom/xiaomi/miglobaladsdk/report/a;

    iget-object v0, v0, Lcom/xiaomi/miglobaladsdk/report/a;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "opr"

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/report/c$b;->a:Lcom/xiaomi/miglobaladsdk/report/a;

    iget-object v0, v0, Lcom/xiaomi/miglobaladsdk/report/a;->f:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "asv"

    iget-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->h:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gaid"

    iget-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->k:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dsp"

    iget-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "placementid"

    iget-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->y:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dcid"

    iget-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->z:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "acctype"

    iget-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->A:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "adinfo"

    iget-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->M:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "reason"

    iget-object p2, p2, Lcom/xiaomi/miglobaladsdk/report/a;->N:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/miglobaladsdk/report/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
