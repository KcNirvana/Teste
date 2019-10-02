.class final Lcom/miui/zeus/logger/MLog$1;
.super Ljava/lang/Object;
.source "MLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/zeus/logger/MLog;->init(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/logger/MLog$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/logger/MLog$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/zeus/logger/MLog;->access$100(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/zeus/logger/MLog;->access$002(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
