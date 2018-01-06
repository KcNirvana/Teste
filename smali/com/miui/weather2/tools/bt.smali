.class Lcom/miui/weather2/tools/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/tools/bs;


# direct methods
.method constructor <init>(Lcom/miui/weather2/tools/bs;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/bt;->a:Lcom/miui/weather2/tools/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/bt;->a:Lcom/miui/weather2/tools/bs;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/bs;->d()V

    return-void
.end method
