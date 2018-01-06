.class Lcom/miui/weather2/tools/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/tools/ar;


# direct methods
.method constructor <init>(Lcom/miui/weather2/tools/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/as;->a:Lcom/miui/weather2/tools/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/as;->a:Lcom/miui/weather2/tools/ar;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/ar;->a()V

    return-void
.end method
