.class Lcom/miui/weather2/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ak;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/al;->a:Lcom/miui/weather2/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/miui/weather2/push/d;->a()Lcom/miui/weather2/push/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/push/d;->b()V

    return-void
.end method
