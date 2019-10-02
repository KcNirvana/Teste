.class public Lcom/xiaomi/miglobaladsdk/report/c$g;
.super Lcom/xiaomi/miglobaladsdk/report/c$a;
.source "AdReportTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/miglobaladsdk/report/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field final synthetic c:Lcom/xiaomi/miglobaladsdk/report/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/report/c;Lcom/xiaomi/miglobaladsdk/report/a;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/report/c$g;->c:Lcom/xiaomi/miglobaladsdk/report/c;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/miglobaladsdk/report/c$a;-><init>(Lcom/xiaomi/miglobaladsdk/report/c;Lcom/xiaomi/miglobaladsdk/report/a;)V

    const-string p1, "context"

    invoke-virtual {p0, p2}, Lcom/xiaomi/miglobaladsdk/report/c$g;->a(Lcom/xiaomi/miglobaladsdk/report/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "apv"

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/report/c$g;->a:Lcom/xiaomi/miglobaladsdk/report/a;

    iget-object v0, v0, Lcom/xiaomi/miglobaladsdk/report/a;->g:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ch"

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/report/c$g;->a:Lcom/xiaomi/miglobaladsdk/report/a;

    iget-object v0, v0, Lcom/xiaomi/miglobaladsdk/report/a;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "opr"

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/report/c$g;->a:Lcom/xiaomi/miglobaladsdk/report/a;

    iget-object v0, v0, Lcom/xiaomi/miglobaladsdk/report/a;->f:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mediaPackageName"

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/report/c$g;->a:Lcom/xiaomi/miglobaladsdk/report/a;

    iget-object v0, v0, Lcom/xiaomi/miglobaladsdk/report/a;->H:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "asv"

    iget-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->h:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gaid"

    iget-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->k:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dcid"

    iget-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->z:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "acctype"

    iget-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->A:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "updateConfig"

    iget-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->G:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ile"

    iget-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->J:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/report/c$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isPre"

    iget p2, p2, Lcom/xiaomi/miglobaladsdk/report/a;->K:I

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/miglobaladsdk/report/c$g;->a(Ljava/lang/String;I)V

    return-void
.end method
