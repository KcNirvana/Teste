.class Lcom/sdu/didi/openapi/DiDiWebActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdu/didi/openapi/DiDiWebActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sdu/didi/openapi/DiDiWebActivity;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/DiDiWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$4;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$4;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->b(Lcom/sdu/didi/openapi/DiDiWebActivity;)Lcom/sdu/didi/openapi/ss/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$4;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->b(Lcom/sdu/didi/openapi/DiDiWebActivity;)Lcom/sdu/didi/openapi/ss/f;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/sdu/didi/openapi/ss/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
