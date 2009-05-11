/* Bit of a hack because GAPI doesn't detect the GObject properties in
 * poppler-document.cc and I don't know how to add them using the GAPI 
 * fixup tool. *sigh*
 */

namespace Poppler
{
  public partial class Document : GLib.Object
  {
    public string Title
    {
      get {
        return (string)this.GetProperty("title");
      }
    }

    public string Format
    {
      get {
        return (string)this.GetProperty("format");
      }
    }

    public string Author
    {
      get {
        return (string)this.GetProperty("author");
      }
    }

    public string Subject
    {
      get {
        return (string)this.GetProperty("subject");
      }
    }

    public string Keywords
    {
      get {
        return (string)this.GetProperty("keywords");
      }
    }

    public string Creator
    {
      get {
        return (string)this.GetProperty("creator");
      }
    }

    public string Producer
    {
      get {
        return (string)this.GetProperty("producer");
      }
    }

    public int CreationDate
    {
      get {
        return (int)this.GetProperty("creation-date");
      }
    }

    public int ModificationDate
    {
      get {
        return (int)this.GetProperty("mod-date");
      }
    }

    public string Linearized
    {
      get {
        return (string)this.GetProperty("linearized");
      }
    }

    // TODO: modification-date
    // TODO: page-layout, page-mode, viewer-preferences, permissions

    public string Metadata
    {
      get {
        return (string)this.GetProperty("metadata");
      }
    }
  }
}
