.class final Lcom/miui/activityutil/ad;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/activityutil/w;


# direct methods
.method constructor <init>(Lcom/miui/activityutil/w;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/activityutil/ad;->a:Lcom/miui/activityutil/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/activityutil/ad;->a:Lcom/miui/activityutil/w;

    const-string/jumbo v1, "delayedUpload"

    invoke-virtual {v0, v1}, Lcom/miui/activityutil/w;->a(Ljava/lang/String;)V

    return-void
.end method
