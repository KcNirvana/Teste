.class final Lcom/miui/weather2/tools/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/miui/weather2/f/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bj;->b(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
