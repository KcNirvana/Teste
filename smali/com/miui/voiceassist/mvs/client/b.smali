.class Lcom/miui/voiceassist/mvs/client/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/miui/voiceassist/mvs/client/a;


# direct methods
.method constructor <init>(Lcom/miui/voiceassist/mvs/client/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/voiceassist/mvs/client/b;->b:Lcom/miui/voiceassist/mvs/client/a;

    iput-object p2, p0, Lcom/miui/voiceassist/mvs/client/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/client/b;->b:Lcom/miui/voiceassist/mvs/client/a;

    iget-object v1, p0, Lcom/miui/voiceassist/mvs/client/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/voiceassist/mvs/client/a;->a(Lcom/miui/voiceassist/mvs/client/a;Ljava/lang/String;)V

    return-void
.end method
