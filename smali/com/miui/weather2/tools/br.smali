.class Lcom/miui/weather2/tools/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/tools/bq;


# direct methods
.method constructor <init>(Lcom/miui/weather2/tools/bq;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/br;->a:Lcom/miui/weather2/tools/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/br;->a:Lcom/miui/weather2/tools/bq;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/bq;->c()V

    return-void
.end method
