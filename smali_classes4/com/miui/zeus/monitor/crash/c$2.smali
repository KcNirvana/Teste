.class Lcom/miui/zeus/monitor/crash/c$2;
.super Ljava/lang/Object;
.source "CrashMonitorRecorder.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/zeus/monitor/crash/c;->a(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/miui/zeus/monitor/crash/c;


# direct methods
.method constructor <init>(Lcom/miui/zeus/monitor/crash/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/monitor/crash/c$2;->b:Lcom/miui/zeus/monitor/crash/c;

    iput-object p2, p0, Lcom/miui/zeus/monitor/crash/c$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lcom/miui/zeus/monitor/crash/c$2;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "@"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
