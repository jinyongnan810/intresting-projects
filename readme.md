## Extract keywords with OpenAI

- repo: https://github.com/jinyongnan810/intresting-projects/tree/main/ai-keyword-extractor

```dart
// sample of asking davinci for general help
const options = {
  method: "POST",
  headers: {
    "Content-Type": "Application/json",
    Authorization: `Bearer ${import.meta.env.VITE_OPENAI_KEY}`,
  },
  body: JSON.stringify({
    model: "text-davinci-003",
    prompt:
      "Extract keywords from this text. Make the first letter of each word uppercase and separate with commas.\n\n" +
      text,
    // https://platform.openai.com/docs/api-reference/completions/create
    temperature: 0.5, // higher creates creative but sometimes unexpected answers, lower creates more conservative and predictable results.
    max_tokens: 60,
    frequency_penalty: 0.8,
  }),
};

const res = await fetch(import.meta.env.VITE_OPENAI_URL, options);
const json = await res.json();
const results = json.choices[0].text.trim();
```

![
](https://firebasestorage.googleapis.com/v0/b/mymemo-98f76.appspot.com/o/uploads%2FSIvHI3wJfEPSACxfj6WH1l53vZx1%2F66e570a9-639f-427b-9076-4227cfe7692c.png?alt=media&token=5378e038-cbdb-433d-baf5-1563811e8226)

## Vite

- Learned from https://www.youtube.com/watch?v=89NJdbYTgJ8
- Makes uses of browser `import` to fetch modules on the fly, instead of making large bundles.
- import & use .env([demo](https://github.com/jinyongnan810/intresting-projects/commit/87079ab69aa6048a8fe704e327e85ec8d32b9368))
- use sass on the fly([demo](https://github.com/jinyongnan810/intresting-projects/commit/bd2a40d3b6e5e28cffba1e1794c3e5a6a2955eb7))

## Copilot

- Awesome ai predicting code
- [Video](https://www.youtube.com/watch?v=DeO7xLXORpY)

---

## Winbox

- https://github.com/nextapps-de/winbox

- Cool UI Window boxes like this. Check out [repo](https://github.com/jinyongnan810/jinyongnan810.github.io/tree/master/Vanilla/Winbox-Landing-Page)
  ![winbox-landing-page](https://res.cloudinary.com/dsiz9ikkt/image/upload/v1622257148/bfxya0b5mq03x1revlsi.png)

---

## mobx

= https://github.com/jinyongnan810/next-mobx-demo

- Basically just create a store, and use observer to checkout store changes.
- It was very easy to use, and suitable for small projects.

---

## photon

- http://photonkit.com/components/

- Can make mac style electron app

---

## Using Cloudinary

- [Front-end](https://github.com/jinyongnan810/mymemo-2-frontend/blob/8349263e42c6e7d8501f6953436f14c2ae6ff50f/src/components/layout/FileUploader.js)
- [Back-end](https://github.com/jinyongnan810/mymemo-2/blob/master/api/memo/controllers/upload.js)
  ![ghibli1](https://res.cloudinary.com/dsiz9ikkt/image/upload/v1609504285/bfymbxi1xez9bvs0clav.jpg)

---

## Using NASA API to create a Wild-fire tracker

- https://api.nasa.gov/
- https://github.com/jinyongnan810/small-react-projects/tree/master/wildfire-tracker
- Also using iconify to get icons, google-map-react to show maps.

---

## Strapi

- https://strapi.io/

- Point: We can create a CMS project right **out-of-box**.
- [Crash Course](https://www.youtube.com/watch?v=6FnwAbd2SDY)

---

## Tailwind CSS

- https://tailwindcss.com/

- Point: **Utility-First** CSS framework.
- [Crash Course](https://www.youtube.com/watch?v=UBOj6rqRUME)

---

## Socket.io

- https://socket.io/get-started/chat/

- Point: Socket.io is **like**(but not) [a wrapper](https://socket.io/docs/) for WebSocket and seems very easy to use.
- Difference with [WebRTC](https://webrtc.org/): WebRTC(also uses WebSocket) is mainly used deliver streaming data.

---

## loading.io

- https://loading.io/

- Point: They provide dynamic icons. And some are free.

---

## CodeMirror

- https://codemirror.net/

- Point: It can highlight textarea.

---

## Serverless development

- Point: Function as service.
- [Demo](https://kentcdodds.com/blog/super-simple-start-to-serverless)

---

## React-Admin

- https://github.com/marmelab/react-admin
- Point: Fast frontend CMS admin page
- [Crash Course](https://www.youtube.com/watch?v=HRmdj-HpJyE)
